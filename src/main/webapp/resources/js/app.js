// Live client-side search filter for list tables.
// Add data-table-search="#tableId" on an <input> and rows will be filtered as you type.
document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('[data-table-search]').forEach(function (input) {
        var table = document.querySelector(input.getAttribute('data-table-search'));
        if (!table) return;
        var rows = table.querySelectorAll('tbody tr');

        input.addEventListener('keyup', function () {
            var term = input.value.trim().toLowerCase();
            rows.forEach(function (row) {
                var text = row.textContent.toLowerCase();
                row.style.display = text.indexOf(term) === -1 ? 'none' : '';
            });
        });
    });

    // Enable Bootstrap tooltips if present
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    tooltipTriggerList.forEach(function (el) {
        new bootstrap.Tooltip(el);
    });
});
