export default {
    name: "MiniCard",

    props: ["mini"],

    // data needs to be a function inside a component
    data: function() {
        return {
            myName: this.app.name,
            myRole: this.app.model,
            program: "IDP"
        }
    },

    template: 
    `<li @click="logClicked">
        <img :src="'images/' + app.image" :alt='app.name + " image"'>
      
    </li>`,

    created: function () {
        console.log(`created ${this.app.name}'s card`);
    },

    methods: {
        logClicked() {
            console.log(`fired from inside ${this.app.name}'s component!`);
        }
    }
}
