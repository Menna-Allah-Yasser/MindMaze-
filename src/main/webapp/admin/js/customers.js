function searchCustomer() {
    let input = document.getElementById("search-input").value.toLowerCase();
    let rows = document.getElementsByTagName("tr");

    for (let i = 1; i < rows.length; i++) {
        let id = rows[i].getElementsByTagName("td")[0].innerText.toLowerCase();
        if (id.includes(input)) {
            rows[i].style.display = "";
        } else {
            rows[i].style.display = "none";
        }
    }
}

$(document).ready(function () {
    loadCustomers();
});

function loadCustomers() {
    $.ajax({
        url: "/MindMaze/admin/users",
        type: "GET",
        dataType: "json",
        success: function (users) {
            let tableBody = $("#customer-tbody");
            tableBody.empty(); // Clear existing rows

            users.forEach(user => {
                let row = `
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.userName}</td>
                        <td>${user.email}</td>
                        <td>${user.phone || "N/A"}</td>
                        <td>${user.city || "N/A"}, ${user.area || "N/A"}, ${user.street || "N/A"}</td>
                        <td>
                            <button class="delete-button" onclick="deleteCustomer(${user.userId})">Delete</button>
                        </td>
                    </tr>
                `;
                tableBody.append(row);
            });
        },
        error: function () {
            alert("Failed to load customers.");
        }
    });
}

function deleteCustomer(userId) {
    if (confirm("Are you sure you want to delete this customer?")) {
        $.ajax({
            url: `/MindMaze/admin/users?userId=${userId}`,
            type: "DELETE",
            success: function () {
                loadCustomers(); // Reload the table after deletion
            },
            error: function () {
                alert("Failed to delete the customer.");
            }
        });
    }
}
