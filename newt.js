document.addEventListener('DOMContentLoaded', function() {
    // Get modal elements
    const modal = document.getElementById('loginModal');
    const closeBtn = document.getElementsByClassName('close')[0];

    // Function to open modal with animation
    function openModal() {
        modal.style.display = 'flex';
        setTimeout(() => {
            modal.classList.add('show');
        }, 50); // Delay for smoother transition
    }

    // Open modal immediately on page load
    openModal();

    // Close modal when clicking the close button
    // Close modal and redirect to the index page when clicking the close button
    // const closeBtn = document.querySelector('.close');

    closeBtn.onclick = function() {
        window.location.href = 'index.jsp'; // Redirect to the index page
    };


    // Close modal when clicking outside of the modal content
    window.onclick = function(event) {
        if (event.target === modal) {
            window.location.href = 'index.jsp'; // Redirect to index.jsp if clicking outside the modal
        }
    }
    
    

    // Close modal with ESC key
    window.addEventListener('keydown', function(event) {
        if (event.key === 'Escape' && modal.style.display === 'flex') {
            modal.classList.remove('show');
            setTimeout(() => {
                modal.style.display = 'none';
            }, 500); // Match the transition time
        }
    });
});
