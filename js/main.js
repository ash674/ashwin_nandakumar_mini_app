import { fetchData } from "./modules/TheDataMiner.js";
import MiniCard from "./modules/AppCard.js";

(() => {

    let vue_vm = new Vue({
       

        data: {  
       message: "Mini App",
        anotherMessage: "Click on image to see description",
        removeAformat: true,
        showBioData: false,
        mini: [],
        currentMiniData: {}
        },

      
        mounted: function() {
            console.log("Vue is mounted, trying a fetch for the initial data");
            
            fetchData("./includes/index.php").then(data => this.mini = data).catch(err => console.error(err));
              
        },

        // run a method when we change our view (update the DOM with Vue)
        updated: function() {
            console.log('Vue just updated the DOM');
        },

        methods: {
            logClicked() {
                console.log("clicked on a list item");
            },

            clickHeader() {
                console.log("clicked on the header");
            },

            showMiniData(target) {
                // remove this prof from the professors array
                console.log('clicked to view Mini data', target, target.name);
                // the "this" keyword inside a vue instance REFERS to the Vue instance itself by default

                // toggle the property between true and false using a ternary statement
                this.showBioData = this.showBioData ? false : true;

                // make the selected prof's data visible
                this.currentMiniData = target;
            }            

        },

        components: {
            "mini-card": MiniCard
        },
    }).$mount("#app"); // also connects Vue to your wrapper in HTML
})();
