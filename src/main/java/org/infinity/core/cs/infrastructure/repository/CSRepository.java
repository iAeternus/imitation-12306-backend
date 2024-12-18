package org.infinity.core.cs.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.cs.model.dto.response.ByIdResponse;
import org.infinity.core.cs.model.po.CustomerServicePO;

import java.util.List;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSRepository
 * @desc
 */
public interface CSRepository extends IService<CustomerServicePO> {
    CustomerServicePO cachedById(String csId);

    List<CustomerServicePO> listAll();
}
