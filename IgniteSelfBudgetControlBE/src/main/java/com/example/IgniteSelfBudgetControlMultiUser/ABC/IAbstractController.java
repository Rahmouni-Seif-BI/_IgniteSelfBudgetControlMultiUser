package com.example.IgniteSelfBudgetControlMultiUser.ABC;

import com.example.IgniteSelfBudgetControlMultiUser.Models.SearchCriteria;
import org.springframework.http.ResponseEntity;

import java.util.List;

public interface  IAbstractController<T> {
    ResponseEntity<T> save(T entity) throws Exception;
    ResponseEntity<List<T>> saveAll(List<T> entities) throws Exception;
    ResponseEntity<T> load(Long id);
    ResponseEntity<List<T>> getAll() throws Exception;
    ResponseEntity<List<T>> getAll(Long page, Long size) throws Exception;
    void delete(Long id);
    ResponseEntity<List<T>> search(SearchCriteria criteria) throws Exception;
//    ResponseEntity<Long> count() throws Exception;
//    ResponseEntity<Void> deleteAll(List<Integer> ids) throws Exception;
}
