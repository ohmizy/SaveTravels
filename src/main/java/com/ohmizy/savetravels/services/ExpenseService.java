package com.ohmizy.savetravels.services;

import com.ohmizy.savetravels.models.Expense;
import com.ohmizy.savetravels.repositories.ExpenseRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ExpenseService {

    private final ExpenseRepository expenseRepository;

    public ExpenseService(ExpenseRepository expenseRepository) {
        this.expenseRepository = expenseRepository;
    }

    public void createExpense(Expense expense){
        expenseRepository.save(expense);

    }

    public List<Expense> allExpenses() {
         return expenseRepository.findAll();
    }

    public Expense findExpense(Long id) {
        Optional<Expense> optionalExpense = expenseRepository.findById(id);
        if (optionalExpense.isPresent()){
        return optionalExpense.get();
        } else {
            return null;
        }
    }

    public Expense updateExpense(Expense expense) {
        return expenseRepository.save(expense);
    }
}
