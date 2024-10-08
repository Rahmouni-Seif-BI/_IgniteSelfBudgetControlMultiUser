package com.example.IgniteSelfBudgetControlMultiUser.ABC;

import com.example.IgniteSelfBudgetControlMultiUser.Models.SearchCriteria;

import javax.validation.ValidationException;
import java.util.List;
public interface IAbstractService<T> {
    T save(T entity) throws Exception;
    List<T> saveAll(List<T> entities) throws Exception;
    T getById(Long id);
    List<T> getAll();
    void delete(Long id);
    List<T> search(SearchCriteria criteria);
    long count();
    void validate(T entity) throws ValidationException;
}
