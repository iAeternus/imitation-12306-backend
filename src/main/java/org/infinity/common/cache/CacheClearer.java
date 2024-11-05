package org.infinity.common.cache;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Component;

import static org.infinity.core.common.constants.I12306Constants.ORDER_CACHE;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/10/14
 * @className CacheClearer
 * @desc
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class CacheClearer {

    @Caching(evict = {
            @CacheEvict(value = ORDER_CACHE, allEntries = true),
            // TODO add here...
    })
    public void evictAllCache() {
        log.info("Evicted all cache.");
    }
}