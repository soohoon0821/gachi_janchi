package com.gachi_janchi.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NickNameAndPhoneNumberRequest {
  private String email;
  private String nickName;
  private String phoneNumber;
}
