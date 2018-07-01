/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.hello;

/**
 *
 * @author omnis
 */
public class TransactionHandler {

    private String payees, primaryCategory, secondaryCategory, memo, number, date;
    private double d_amount;

    public TransactionHandler() {
        payees = null;
        primaryCategory = null;
        secondaryCategory = null;
        memo = null;
        number = null;
        date = null;
    }

    /**
     * @return the payees
     */
    public String getPayees() {
        return payees;
    }

    /**
     * @param payees the payees to set
     */
    public void setPayees(String payees) {
        this.payees = payees;
    }

    /**
     * @return the primaryCategory
     */
    public String getPrimaryCategory() {
        return primaryCategory;
    }

    /**
     * @param primaryCategory the primaryCategory to set
     */
    public void setPrimaryCategory(String primaryCategory) {
        this.primaryCategory = primaryCategory;
    }

    /**
     * @return the secondaryCategory
     */
    public String getSecondaryCategory() {
        return secondaryCategory;
    }

    /**
     * @param secondaryCategory the secondaryCategory to set
     */
    public void setSecondaryCategory(String secondaryCategory) {
        this.secondaryCategory = secondaryCategory;
    }

    /**
     * @return the memo
     */
    public String getMemo() {
        return memo;
    }

    /**
     * @param memo the memo to set
     */
    public void setMemo(String memo) {
        this.memo = memo;
    }

    /**
     * @return the string
     */
    public String getNumber() {
        return number;
    }

    /**
     * @param number the number to set
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the amount
     */
    public String getAmount() {
        return String.valueOf(d_amount);
    }

    /**
     * @param amount the amount to set
     */
    public void setAmount(String amount) {

        try {
            this.d_amount = Double.parseDouble(amount);
        } catch (Exception e) {
            this.d_amount = 0.00;
            return;
        }
    }
}
