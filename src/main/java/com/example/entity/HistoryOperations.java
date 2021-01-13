package com.example.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity //Теперь этот класс является сущностью, отвечающей за историю операций
public class HistoryOperations
{
    @Id //Указываем на ключевой элемент таблицы
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String operation; //Операция
    private String AccountSenders; //Счёт отправителя
    private String AccountRecipients; //Счёт получателя
    private Date date;
    private Double amount; //Сумма
    private Long idSenders; //id отправителя

    public HistoryOperations()
    {
    }

    public HistoryOperations(String operation, String AccountSenders, String AccountRecipients, Double amount, Long idSenders)
    {
        this.operation = operation;
        this.AccountSenders = AccountSenders;
        this.AccountRecipients = AccountRecipients;
        this.date = new Date(); //Получаем текущую дату
        this.amount = amount;
        this.idSenders = idSenders; //id отправителя (сам авторизованный юзер)
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public String getAccountSenders() {
        return AccountSenders;
    }

    public void setAccountSenders(String accountSenders) {
        AccountSenders = accountSenders;
    }

    public String getAccountRecipients() {
        return AccountRecipients;
    }

    public void setAccountRecipients(String accountRecipients) {
        AccountRecipients = accountRecipients;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Long getIdSenders() {
        return idSenders;
    }

    public void setIdSenders(Long idSenders) {
        this.idSenders = idSenders;
    }
}
