package com.ohmizy.savetravels.repositories;

import com.ohmizy.savetravels.models.Expense;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ExpenseRepository extends CrudRepository<Expense, Long> {
    List<Expense> findAll();
}
