package com.briup.estore.common.util;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface ResultSetHandler {

	Object process(ResultSet rs)throws SQLException;
	

}
