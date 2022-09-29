package com.ken.app.service;

import com.ken.app.model.Expense;

import java.util.List;

public interface ExpenseService {

    List<Expense> findAll();

    void save(Expense expense);
}
