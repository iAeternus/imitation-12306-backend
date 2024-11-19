package org.infinity.core.user.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.validation.id.user.UserId;
import org.infinity.core.user.model.dto.command.UserLoginCommand;
import org.infinity.core.user.model.dto.command.UserRegisterCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.UserProfileResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;
import org.infinity.core.user.service.UserCommandService;
import org.infinity.core.user.service.UserQueryService;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/users")
@Tag(name = "用户相关接口")
public class UserController {

    private final UserCommandService userCommandService;
    private final UserQueryService userQueryService;

    @PostMapping("/registration")
    @Operation(summary = "用户注册")
    @ResponseStatus(HttpStatus.CREATED)
    public UserRegisterResponse register(@RequestBody @Valid UserRegisterCommand command) {
        return userCommandService.register(command);
    }

    @PostMapping("/login")
    @Operation(summary = "用户登录")
    public JwtTokenResponse login(@RequestBody @Valid UserLoginCommand command) {
        return userCommandService.login(command);
    }

    @GetMapping("/me/{userId}")
    @Operation(summary = "获取我的用户信息")
    public UserProfileResponse fetchMyProfile(@PathVariable("userId") @UserId String userId) {
        return userQueryService.fetchMyProfile(userId);
    }

}
