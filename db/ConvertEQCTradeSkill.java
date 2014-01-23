import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*
 * Harakiri - call this program from eclipse for example but with -Xmx516m to increase heap space
 * 
 * use http://ftp.gwdg.de/pub/misc/mysql/Downloads/Connector-J/mysql-connector-java-5.1.8.zip
 * 
 * mysql jdbc driver
 * 
 * needs MyPrepareStatement.java
 */

public class ConvertEQCTradeSkill {

	final static int SKILL_FISHING = 55;
	final static int MAKE_POISON = 56;
	final static int TINKERING = 57;
	final static int RESEARCH = 58;
	final static int ALCHEMY = 59;
	final static int BAKING = 60;
	final static int TAILORING = 61;
	final static int SENSE_TRAPS = 62;
	final static int BLACKSMITHING = 63;
	final static int FLETCHING = 64;
	final static int BREWING = 65;
	final static int ALCOHOL_TOLERANCE = 66;
	final static int BEGGING = 67;
	final static int JEWELRY_MAKING = 68;
	final static int POTTERY = 69;

	public static void main(String[] args) {
		ConvertEQCTradeSkill convert = new ConvertEQCTradeSkill();
	}

	public ConvertEQCTradeSkill() {
		try {
			String EQ_DB = "eqclassic";
			String DB_USER = "root";
			String DB_PASSWORD = "test";
			Statement statement;

			// Register the JDBC driver for MySQL.
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/" + EQ_DB;
			//
			Connection con = DriverManager.getConnection(url, DB_USER,
					DB_PASSWORD);

			System.out.println("URL: " + url);
			System.out.println("Connection: " + con);

			// our old npcmovedb table
			String query = "SELECT * from tradeskillrecipe ORDER BY tradeskill";
			statement = con.prepareStatement(query);
			ResultSet rs = statement.executeQuery(query);

			/*
			 * TABLE `tradeskillrecipe` ( `id` int(11) NOT NULL auto_increment,
			 * `tradeskill` smallint(6) NOT NULL default '0', `skillneeded`
			 * smallint(6) NOT NULL default '0', `trivial` smallint(6) NOT NULL
			 * default '0', `product` smallint(6) NOT NULL default '0',
			 * `product2` smallint(6) NOT NULL default '0', `failproduct`
			 * smallint(6) NOT NULL default '0', `productcount` smallint(6) NOT
			 * NULL default '0', `i1` smallint(6) NOT NULL default '0', `i2`
			 * smallint(6) NOT NULL default '0', `i3` smallint(6) NOT NULL
			 * default '0', `i4` smallint(6) NOT NULL default '0', `i5`
			 * smallint(6) NOT NULL default '0', `i6` smallint(6) NOT NULL
			 * default '0', `i7` smallint(6) NOT NULL default '0', `i8`
			 * smallint(6) NOT NULL default '0', `i9` smallint(6) NOT NULL
			 * default '0', `i10` smallint(6) NOT NULL default '0', `notes`
			 * text,
			 */
			int theID = 0;
			boolean execute = true;
			while (rs.next()) {
				theID++;
				int recipeid = theID;// rs.getInt("id");
				int tradeskill = rs.getInt("tradeskill");
				int skillneeded = rs.getInt("skillneeded");
				int trivial = rs.getInt("trivial");
				int productID = rs.getInt("product");
				int productID2 = rs.getInt("product2");
				int failproductID = rs.getInt("failproduct");
				int productcount = rs.getInt("productcount");

				List<Item> components = new ArrayList<Item>();
				for (int i = 1; i <= 10; i++) {

					int itemID = rs.getInt("i" + i);

					if (itemID != 0) {

						Item item = null;

						// do we already have this item?
						for (Item anitem : components) {
							if (anitem.getItemID() == itemID) {
								item = anitem;
								break;
							}
						}

						if (item == null) {
							item = new Item();
							item.setItemID(itemID);

							components.add(item);
						}

						item.setNumItems(item.getNumItems() + 1);

					}

				}

				String recipeName = rs.getString("notes");

				/*
				 * for(Item item:components) { if(item.getNumItems() > 1) {
				 * System.out.println("Recipe "+recipeid+" " + recipeName +
				 * " needs item " + components.size() + " items needs " +
				 * item.getItemID() + " "+item.getNumItems() + " times"); } }
				 */

				// System.out.println("Recipe "+recipeid+" " + recipeName +
				// " needs " + components.size() + " items");

				/*
				 * `tradeskill_recipe` ( `id` int(11) NOT NULL auto_increment,
				 * `name` varchar(64) NOT NULL default '', `tradeskill`
				 * smallint(6) NOT NULL default '0', `skillneeded` smallint(6)
				 * NOT NULL default '0', `trivial` smallint(6) NOT NULL default
				 * '0', `nofail` tinyint(1) NOT NULL default '0',
				 * `replace_container` tinyint(1) NOT NULL default '0', `notes`
				 * tinytext, PRIMARY KEY (`id`) ) ENGINE=MyISAM
				 * AUTO_INCREMENT=8364 DEFAULT CHARSET=latin1;
				 */

				StringBuilder insertSql = new StringBuilder();

				insertSql.append("INSERT INTO tradeskill_recipe (");
				insertSql.append("id, ");
				insertSql.append("name, ");
				insertSql.append("tradeskill, ");
				insertSql.append("skillneeded, ");
				insertSql.append("trivial) VALUES (");
				insertSql.append("?, ?, ?, ?,?)");

				MyPreparedStatement stmt = new MyPreparedStatement(insertSql
						.toString());

				stmt.addInteger(recipeid);
				stmt.addString(recipeName);
				stmt.addInteger(tradeskill);
				stmt.addInteger(skillneeded);
				stmt.addInteger(trivial);

				PreparedStatement pstmt = stmt.generateStatement(con);

				if (execute) {
					pstmt.execute();
				}

				/*
				 * TABLE `tradeskill_recipe_entries` ( `id` int(11) NOT NULL
				 * auto_increment, `recipe_id` int(11) NOT NULL default '0',
				 * `item_id` int(11) NOT NULL default '0', `successcount`
				 * tinyint(2) NOT NULL default '0', `failcount` tinyint(2) NOT
				 * NULL default '0', `componentcount` tinyint(2) NOT NULL
				 * default '1', `iscontainer` tinyint(1) NOT NULL default '0',
				 * PRIMARY KEY (`id`), KEY `recipe_id` (`recipe_id`), KEY
				 * `item_id` (`item_id`) ) ENGINE=MyISAM AUTO_INCREMENT=62298
				 * DEFAULT CHARSET=latin1;
				 */

				insertSql = new StringBuilder();

				insertSql.append("INSERT INTO tradeskill_recipe_entries (");
				insertSql.append("recipe_id, ");
				insertSql.append("item_id, ");
				insertSql.append("successcount, ");
				insertSql.append("failcount, ");
				insertSql.append("componentcount) VALUES (");
				insertSql.append("?, ?, ?, ?,?)");

				// Insert all needed Items
				for (Item item : components) {

					stmt = new MyPreparedStatement(insertSql.toString());

					stmt.addInteger(recipeid);
					stmt.addInteger(item.getItemID());
					stmt.addInteger(0);
					stmt.addInteger(0);
					stmt.addInteger(item.getNumItems());

					pstmt = stmt.generateStatement(con);

					if (execute) {
						pstmt.execute();
					}
				}

				// Insert Result Product = successcount
				if (productID != 0) {
					stmt = new MyPreparedStatement(insertSql.toString());

					stmt.addInteger(recipeid);
					stmt.addInteger(productID);
					stmt.addInteger(productcount);
					stmt.addInteger(0);
					stmt.addInteger(0);

					pstmt = stmt.generateStatement(con);
					if (execute) {
						pstmt.execute();
					}
				} else {
					System.out.println("Recipe NULL Result " + recipeid + " "
							+ recipeName + " needs " + components.size()
							+ " items");
				}

				// Insert Result Product2 = successcount
				if (productID2 != 0) {
					stmt = new MyPreparedStatement(insertSql.toString());

					stmt.addInteger(recipeid);
					stmt.addInteger(productID2);
					// there is no product2count, so i guess its always 1
					stmt.addInteger(1);
					stmt.addInteger(0);
					stmt.addInteger(0);

					pstmt = stmt.generateStatement(con);
					if (execute) {
						pstmt.execute();
					}
				}

				// Insert Result failproduct = failproductcount
				if (failproductID != 0) {
					stmt = new MyPreparedStatement(insertSql.toString());

					stmt.addInteger(recipeid);
					stmt.addInteger(failproductID);
					stmt.addInteger(0);
					// there is no failproduct count, so i guess its always 1
					stmt.addInteger(1);
					stmt.addInteger(0);

					pstmt = stmt.generateStatement(con);
					if (execute) {
						pstmt.execute();
					}
				}

				// assign combine items

				int ALCHEMY_BEARSKIN_POTION_BAG = 17811;
				int ALCHEMY_MEDICINE_BAG = 17901;
				int RESEARCH_CONCORDANCE_OF_RESEARCH = 17504;
				int FISHING_TACKLEBOX = 17048;
				int JEWELCRAFT_JEWELLERS_KIT = 17912;
				int MAKE_POISON_MORTAR_AND_PESTLE=17904;
				int TAILORING_SMALL_SEWING_KIT = 17908;
				int TAILORING_LARGE_SEWING_KIT = 17966;
				int TINKERING_TOOLBOX = 17902;
				int TINKERING_DELUXE_TOOLBOX = 17877;
				// this seems incorrect on the client returns bad image number
				int FLETCHING_FLETCHINT_KIT=17910;
				int BAKING_OBJECT_OVEN = 15;
				int SMITHING_OBJECT_FORGE = 17;
				int BREWING_OBJECT_BARREL = 19;
				int SMITHING_OBJECT_ROYAL_QEYNOS_FORGE = 40;
				int SMITHING_OBJECT_TEIRDAL_FORGE = 31;
				int SMITHING_OBJECT_KOADADAL_FORGE = 32;
				int SMITHING_OBJECT_FIERDAL_FORGE = 48;
				int SMITHING_OBJECT_STORMGUARD_FORGE = 34;
				int SMITHING_OBJECT_OGGOK_FORGE = 33;
				int SMITHING_OBJECT_NORTHMAN_FORGE = 36;
				int SMITHING_OBJECT_GROBB_FORGE = 47;
				int SMITHING_OBJECT_VALE_FORGE = 49;
				int SMITHING_OBJECT_ROYAL_ERUDIN_FORGE = 50;
				int SMITHING_OBJECT_CABALIS_FORGE = 38;
				int SMITHING_OBJECT_FREEPORT_FORGE = 39;
				
				int POTTERY_OBJECT_WHEEL=21;
				int POTTERY_OBJECT_KILN=22;
				
				

				List<Integer> containerIDs = new ArrayList<Integer>();

				// assign container objects by tradeskill type
				switch (tradeskill) {
				case SKILL_FISHING:
					containerIDs.add(FISHING_TACKLEBOX);
					break;
				case MAKE_POISON:
					containerIDs.add(MAKE_POISON_MORTAR_AND_PESTLE);
					break;
				case TINKERING:
					containerIDs.add(TINKERING_TOOLBOX);
					containerIDs.add(TINKERING_DELUXE_TOOLBOX);
					break;
				case RESEARCH:
					containerIDs.add(RESEARCH_CONCORDANCE_OF_RESEARCH);
					break;
				case ALCHEMY:
					// combine potions, the successitem id is wrong in this one, seems to always be the 1 charge potion
					if(recipeName!=null && ( recipeName.toLowerCase().indexOf("5 dose")!=-1 || recipeName.toLowerCase().indexOf("10 dose")!=-1) ) {
						containerIDs.add(ALCHEMY_BEARSKIN_POTION_BAG);
				    // must be medcine bag
					} else {
						containerIDs.add(ALCHEMY_MEDICINE_BAG);
					}
					break;
				case BAKING:
					containerIDs.add(BAKING_OBJECT_OVEN);
					break;
				case TAILORING:
					containerIDs.add(TAILORING_LARGE_SEWING_KIT);
					containerIDs.add(TAILORING_SMALL_SEWING_KIT);
					break;
				case BLACKSMITHING:
					containerIDs.add(SMITHING_OBJECT_FORGE);
					containerIDs.add(SMITHING_OBJECT_ROYAL_QEYNOS_FORGE);
					containerIDs.add(SMITHING_OBJECT_TEIRDAL_FORGE);
					containerIDs.add(SMITHING_OBJECT_KOADADAL_FORGE);
					containerIDs.add(SMITHING_OBJECT_FIERDAL_FORGE);
					containerIDs.add(SMITHING_OBJECT_STORMGUARD_FORGE);			
					containerIDs.add(SMITHING_OBJECT_OGGOK_FORGE);			
					containerIDs.add(SMITHING_OBJECT_NORTHMAN_FORGE);				
					containerIDs.add(SMITHING_OBJECT_GROBB_FORGE);				
					containerIDs.add(SMITHING_OBJECT_VALE_FORGE);
					containerIDs.add(SMITHING_OBJECT_ROYAL_ERUDIN_FORGE);
					containerIDs.add(SMITHING_OBJECT_CABALIS_FORGE);
					containerIDs.add(SMITHING_OBJECT_FREEPORT_FORGE);										
					
					break;
				case FLETCHING:
					containerIDs.add(FLETCHING_FLETCHINT_KIT);
					break;
				case BREWING:
					containerIDs.add(BREWING_OBJECT_BARREL);
					break;
				case JEWELRY_MAKING:
					containerIDs.add(JEWELCRAFT_JEWELLERS_KIT);
					break;
				case POTTERY:
					// needs more differentiation
					containerIDs.add(POTTERY_OBJECT_WHEEL);
					containerIDs.add(POTTERY_OBJECT_KILN);
					break;
					default: System.out.println("unknown tradeskill " + tradeskill);
				}

				for (Integer containerID : containerIDs) {

					insertSql = new StringBuilder();

					insertSql.append("INSERT INTO tradeskill_recipe_entries (");
					insertSql.append("recipe_id, ");
					insertSql.append("item_id, ");
					insertSql.append("successcount, ");
					insertSql.append("failcount, ");
					insertSql.append("componentcount, iscontainer) VALUES (");
					insertSql.append("?, ?, ?, ?,?,?)");

					stmt = new MyPreparedStatement(insertSql.toString());

					stmt.addInteger(recipeid);
					stmt.addInteger(containerID);
					stmt.addInteger(0);
					stmt.addInteger(0);
					stmt.addInteger(0);
					stmt.addInteger(1);

					pstmt = stmt.generateStatement(con);
					if (execute) {
						pstmt.execute();
					}
				}

			}

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}// end catch

	}

	public class Item {
		private int itemID = 0;;
		private int numItems = 0;;

		public int getItemID() {
			return itemID;
		}

		public void setItemID(int itemID) {
			this.itemID = itemID;
		}

		public int getNumItems() {
			return numItems;
		}

		public void setNumItems(int numItems) {
			this.numItems = numItems;
		}

	}
	
	

}
