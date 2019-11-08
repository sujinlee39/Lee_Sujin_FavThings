// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link'),
        lightBox = document.querySelector('.lightbox');

        // create the social media list
    function renderSocialMedia(media) {
        return `<ul class="u-social">
                    ${media.map(item => `<li>${item}</li>`).join("")}
                </ul>`
    }
    
    function parseUserData(product) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let proContent = `
            // <h1>${product.Name}</h1>
            <p>${product.description}</p>
            <h4>Social Media:</h4>
            <!-- loop thru social media stuff here -->
            ${renderSocialMedia(product.social)}
        `;

        targetDiv.innerHTML = proContent;
        targetImg.src = product.currentSrc;

        lightBox.classList.add('show-lb');
    };

    function getUserData(event) {
        event.preventDefault();
        //debugger;
        // 1, 2, or 3 depending on which anchor tag you click
        let url = `/user/${this.getAttribute('href')}`,
            currentImg = this.firstElementChild.getAttribute('src');


        // this goes and fetxhes the datbase content (or and API endpoint)
        // that's why it's called a fetch!
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                data.currentSrc = currentImg;
                parseUserData(data);
            })
            .catch((err) => console.log(err));
    }

    userButtons.forEach(button => button.addEventListener("click", getUserData))

    // wire up the lightbox close button
    lightBox.querySelector('.close').addEventListener("click", function(){
        lightBox.classList.remove('show-lb');
    });

})();