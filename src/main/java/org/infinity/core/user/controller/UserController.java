package org.infinity.core.user.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.validation.id.user.UserId;
import org.infinity.core.user.model.dto.command.*;
import org.infinity.core.user.model.dto.response.*;
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

    @DeleteMapping("/logout")
    @Operation(summary = "退出登陆")
    public LogoutResponse logout(@RequestBody @Valid LogoutCommand command) {
        return userCommandService.logout(command);
    }

    @PutMapping("/stu")
    @Operation(summary = "学生认证")
    public void stuVerify(@RequestBody @Valid StuVerifyCommand command) {
        userCommandService.stuVerify(command);
    }

    @PutMapping("/real-name")
    @Operation(summary = "实名认证")
    public void realNameVerify(@RequestBody @Valid RealNameVerifyCommand command) {
        userCommandService.realNameVerify(command);
    }

    @PutMapping("/change/mobile")
    @Operation(summary = "变更用户电话号码")
    public ChangeMobileResponse changeMobile(@RequestBody @Valid ChangeMobileCommand command) {
        return userCommandService.changeMobile(command);
    }

    @GetMapping("/me/{userId}")
    @Operation(summary = "获取我的用户信息")
    public UserProfileResponse fetchMyProfile(@PathVariable("userId") @UserId String userId) {
        return userQueryService.fetchMyProfile(userId);
    }

    @GetMapping("/me/role/{userId}")
    @Operation(summary = "查询用户身份")
    public FetchNyRoleResponse fetchNyRole(@PathVariable("userId") @UserId String userId) {
        return userQueryService.fetchNyRole(userId);
    }

}
