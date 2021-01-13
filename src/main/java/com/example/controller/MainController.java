package com.example.controller;

import com.example.entity.Client;
import com.example.entity.HistoryOperations;
import com.example.repository.ClientRepository;
import com.example.repository.HistoryOperationsRepository;
import com.example.repository.UserRepository;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.sql.SQLException;
import java.util.ArrayList;

@Controller
public class MainController {

    @Autowired
    UserService userService;

    @Autowired
    private ClientRepository clientRepository;

    @Autowired //Аннотация, необходимая для переменной, ссылающейся на репозиторий
    private HistoryOperationsRepository historyOperationsRepository;

    @GetMapping("/")
    public String home(Model model) {
        return "home";
    }

    @GetMapping("/personalAccount")
    public String personalAccount(Model model) {
        ArrayList<Client> clientInfo = new ArrayList<>();
        for (Client item : clientRepository.findAll())
        {
            if (item.getId().equals(userService.getIdClient()))
                clientInfo.add(item);
        }
        model.addAttribute("clientInfo", clientInfo);
        model.addAttribute("title", "Личный кабинет");
        return "personalAccount";
    }

    /*@GetMapping("/personalAccountEdit")
    public String personalAccountAdd(Model model) {
        model.addAttribute("title", "Добавить пользователя");
        return "personalAccountEdit";
    }

    /*
    @PostMapping("/personalAccountEdit")
    public String personalAccountUserEdit(@RequestParam String firstName, @RequestParam String lastName, @RequestParam String middleName, @RequestParam String mail, @RequestParam String number, Model model){
        User user = new User(firstName, lastName, middleName, mail, number);
        CreateDB createDB = new CreateDB();
        createDB.insert(user);
        userRepository.save(user);
        return "redirect:/personalAccount";
    }*/

    @GetMapping("/history")
    public String historyOperation(Model model) throws SQLException //Model - обязательный параметр
    {
        ArrayList<HistoryOperations> history = new ArrayList<>();
        for (HistoryOperations item : historyOperationsRepository.findAll())
        {
            if (item.getIdSenders().equals(userService.getIdClient()))
                history.add(item);
        }
        model.addAttribute("history", history);
        return "historyOperation";
    }
}