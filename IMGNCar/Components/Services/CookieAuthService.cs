using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Http;
using System.Security.Claims;
using System.Threading.Tasks;

public class CookieAuthService : IAuthenticationService
{
    private readonly IHttpContextAccessor _httpContextAccessor;

    public CookieAuthService(IHttpContextAccessor httpContextAccessor)
    {
        _httpContextAccessor = httpContextAccessor;
    }

    public async Task SignInAsync(
        HttpContext context,
        string? scheme,
        ClaimsPrincipal principal,
        AuthenticationProperties? properties)
    {
        await _httpContextAccessor.HttpContext!.SignInAsync(
            scheme ?? CookieAuthenticationDefaults.AuthenticationScheme,
            principal,
            properties);
    }

    // Implement other required interface methods
    public Task<AuthenticateResult> AuthenticateAsync(HttpContext context, string? scheme)
        => throw new NotImplementedException();

    public Task ChallengeAsync(HttpContext context, string? scheme, AuthenticationProperties? properties)
        => throw new NotImplementedException();

    public Task ForbidAsync(HttpContext context, string? scheme, AuthenticationProperties? properties)
        => throw new NotImplementedException();

    public async Task SignOutAsync(HttpContext context, string? scheme, AuthenticationProperties? properties)
        => await _httpContextAccessor.HttpContext!.SignOutAsync(
            scheme ?? CookieAuthenticationDefaults.AuthenticationScheme,
            properties);
}