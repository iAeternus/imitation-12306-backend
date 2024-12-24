package org.infinity.core.cs.infrastructure.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.exception.MyException;
import org.infinity.core.cs.infrastructure.mapper.CSMapper;
import org.infinity.core.cs.infrastructure.repository.CSRepository;
import org.infinity.core.cs.infrastructure.repository.cache.MysqlCSCachedRepository;
import org.infinity.core.cs.model.po.CustomerServicePO;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.infinity.core.common.exception.ErrorCodeEnum.CS_NOT_FOUND;
import static org.infinity.core.common.utils.MapUtils.mapOf;
import static org.infinity.core.common.utils.ValidationUtils.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className MysqlCSRepository
 * @desc
 */
@Repository
@RequiredArgsConstructor
public class MysqlCSRepository extends ServiceImpl<CSMapper, CustomerServicePO> implements CSRepository {

    private final MysqlCSCachedRepository csCachedRepository;

    @Override
    public CustomerServicePO cachedById(String csId) {
        requireNonBlank(csId, "Customer Service ID must not be blank.");

        CustomerServicePO customerServicePO = csCachedRepository.cachedById(csId);
        if (isNull(customerServicePO)) {
            throw new MyException(CS_NOT_FOUND, "Customer Service not found.", mapOf("Customer Service ID", csId));
        }
        return customerServicePO;
    }

    @Override
    public List<CustomerServicePO> listAll() {
        List<CustomerServicePO> all = lambdaQuery().list();
        if (isEmpty(all)) {
            throw new MyException(CS_NOT_FOUND, "Customer Service not found.");
        }
        return all;
    }
}
