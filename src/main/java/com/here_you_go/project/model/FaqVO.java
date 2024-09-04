package com.here_you_go.project.model;

public class FaqVO {
  private String faqNo; 
  private String faqTextf; // 질문
  private String faqTexta; // 답변
  private String faqctgId; // 카테고리 id
  
  // Getter / Setter
  public String getFaqNo() {
    return faqNo;
  }
  public void setFaqNo(String faqNo) {
    this.faqNo = faqNo;
  }
  public String getFaqTextf() {
    return faqTextf;
  }
  public void setFaqTextf(String faqTextf) {
    this.faqTextf = faqTextf;
  }
  public String getFaqTexta() {
    return faqTexta;
  }
  public void setFaqTexta(String faqTexta) {
    this.faqTexta = faqTexta;
  }
  public String getFaqctgId() {
    return faqctgId;
  }
  public void setFaqctgId(String faqctgId) {
    this.faqctgId = faqctgId;
  }
  
  
}
