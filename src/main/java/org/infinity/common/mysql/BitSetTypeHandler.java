package org.infinity.common.mysql;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.springframework.stereotype.Component;

import java.sql.*;
import java.util.BitSet;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/15
 * @className BitSetTypeHandler
 * @desc
 */
@Component
@MappedTypes(BitSet.class)
@MappedJdbcTypes(JdbcType.BLOB)
public class BitSetTypeHandler extends BaseTypeHandler<BitSet> {
    @Override
    public void setNonNullParameter(PreparedStatement ps, int i, BitSet parameter, JdbcType jdbcType) throws SQLException {
        byte[] bytes = parameter.toByteArray();
        ps.setObject(i, bytes);
    }

    @Override
    public BitSet getNullableResult(ResultSet rs, String columnName) throws SQLException {
        Blob blob = rs.getBlob(columnName);
        return BitSet.valueOf(blob.getBytes(0L, (int) blob.length())); // TODO Cannot invoke "java.sql.Blob.length()" because "blob" is null
    }

    @Override
    public BitSet getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
        Blob blob = rs.getBlob(columnIndex);
        return BitSet.valueOf(blob.getBytes(0L, (int) blob.length()));
    }

    @Override
    public BitSet getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
        Blob blob = cs.getBlob(columnIndex);
        return BitSet.valueOf(blob.getBytes(0L, (int) blob.length()));
    }
}
