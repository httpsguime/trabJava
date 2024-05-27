package com.example.trabalhoJava.controller;

import com.example.trabalhoJava.Agendamento.Agendamento;
import com.example.trabalhoJava.Agendamento.AgendamentoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("Agendamentos")
public class MenuPrincipal {

    @Autowired
    private AgendamentoRepository repository;
    @GetMapping
    public List<Agendamento> getAll(){

        List<Agendamento> AgendaList = repository.findAll();
        return AgendaList;
    }
}
