
package com.skynet.retailscm.retailstoreordershippinggroup;
import com.skynet.retailscm.AccessKey;


public class RetailStoreOrderShippingGroupTable{


	public static AccessKey withId(Object value){
		AccessKey accessKey = new AccessKey();
		accessKey.setColumnName(COLUMN_ID);
		accessKey.setValue(value);
		return accessKey;
	}
	//Add extra identifiers
	

	//only this package can use this, so the scope is default, not public, not private either nor protected
	static final String TABLE_NAME="retail_store_order_shipping_group_data";
	static final String COLUMN_ID = "id";
	static final String COLUMN_NAME = "name";
	static final String COLUMN_BIZ_ORDER = "biz_order";
	static final String COLUMN_AMOUNT = "amount";
	static final String COLUMN_VERSION = "version";
 
	static final String []ALL_CLOUMNS = {COLUMN_ID, 
		COLUMN_NAME, COLUMN_BIZ_ORDER, COLUMN_AMOUNT, 
		COLUMN_VERSION};
	static final String []NORMAL_CLOUMNS = {
		COLUMN_NAME, COLUMN_BIZ_ORDER, COLUMN_AMOUNT
		};
	
	
}

