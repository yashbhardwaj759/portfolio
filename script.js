// Smooth scrolling for navigation links
function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
    }
}

// Add click event to all navigation links
document.addEventListener('DOMContentLoaded', function() {
    const navLinks = document.querySelectorAll('.nav-menu a');
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('href').substring(1);
            scrollToSection(targetId);
        });
    });
});

// Chat Box Functions
let chatOpen = false;

function toggleChat() {
    const chatContainer = document.getElementById('chatContainer');
    const chatButton = document.getElementById('chatButton');
    const chatToggle = document.getElementById('chatToggle');
    
    chatOpen = !chatOpen;
    
    if (chatOpen) {
        chatContainer.classList.add('active');
        chatButton.style.display = 'none';
        chatToggle.textContent = '−';
    } else {
        chatContainer.classList.remove('active');
        chatButton.style.display = 'flex';
        chatToggle.textContent = '+';
    }
}

function sendMessage() {
    const input = document.getElementById('chatInput');
    const message = input.value.trim();
    
    if (message === '') return;
    
    // Add user message
    addChatMessage(message, 'user');
    input.value = '';
    
    // Simulate bot response
    setTimeout(() => {
        const botResponse = getBotResponse(message);
        addChatMessage(botResponse, 'bot');
    }, 500);
}

function handleChatKeyPress(event) {
    if (event.key === 'Enter') {
        sendMessage();
    }
}

function addChatMessage(text, type) {
    const chatMessages = document.getElementById('chatMessages');
    const messageDiv = document.createElement('div');
    messageDiv.className = `chat-message ${type}`;
    messageDiv.innerHTML = `<p>${text}</p>`;
    chatMessages.appendChild(messageDiv);
    chatMessages.scrollTop = chatMessages.scrollHeight;
}

function getBotResponse(userMessage) {
    const message = userMessage.toLowerCase();
    
    if (message.includes('hello') || message.includes('hi') || message.includes('hey')) {
        return "Hello! Thanks for visiting my portfolio. How can I help you?";
    } else if (message.includes('project') || message.includes('work')) {
        return "I've worked on Skillify (AI learning assistant) and DataWhiz (data analytics). Check out the Projects section for more details!";
    } else if (message.includes('skill') || message.includes('technology')) {
        return "I know HTML, CSS, JavaScript, Python, Java, C, C++, SQL, MySQL, and various tools like Git and Linux.";
    } else if (message.includes('education') || message.includes('degree')) {
        return "I'm currently pursuing BTech in Computer Science from GLA University, Mathura. Expected graduation: July 2026.";
    } else if (message.includes('contact') || message.includes('email') || message.includes('phone')) {
        return "You can reach me at lakshyabhardwaj0070@gmail.com or call 7599100346. Also check my LinkedIn and GitHub links in the Contact section!";
    } else if (message.includes('experience') || message.includes('internship')) {
        return "I completed a Java internship at Coding Blocks (Jun-Aug 2024) where I learned OOP principles and DSA.";
    } else if (message.includes('leetcode') || message.includes('coding')) {
        return "I've solved 200+ problems on LeetCode! It's helped me strengthen my Data Structures and Algorithms skills.";
    } else if (message.includes('thank') || message.includes('thanks')) {
        return "You're welcome! Feel free to ask me anything else.";
    } else {
        return "That's interesting! Feel free to ask me about my projects, skills, education, or experience. I'd be happy to share more!";
    }
}

// Navbar background on scroll
window.addEventListener('scroll', function() {
    const navbar = document.querySelector('.navbar');
    if (window.scrollY > 50) {
        navbar.style.boxShadow = '0 2px 10px rgba(0,0,0,0.2)';
    } else {
        navbar.style.boxShadow = 'none';
    }
});

