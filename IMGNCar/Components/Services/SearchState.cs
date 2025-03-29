using Microsoft.AspNetCore.Components;

public class SearchState
{
    public string SearchTerm { get; set; } = string.Empty;
    public event Action? OnChange;

    public void NotifyStateChanged() => OnChange?.Invoke();
}