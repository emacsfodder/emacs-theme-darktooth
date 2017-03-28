window.makeImage = (target) => {
  html2canvas(target, {
    onrendered: function(canvas) {
      document.body.appendChild(canvas);
    },
    background: undefined
  });
};

var palette = {
  'dark0_hard':            '#1D2021',
  'dark0_hard-xterm':      '#1c1c1c',
  'dark0':                 '#282828',
  'dark0-xterm':           '#262626',
  'dark0_soft':            '#32302F',
  'dark0_soft-xterm':      '#303030',
  'dark1':                 '#3C3836',
  'dark1-xterm':           '#3a3a3a',
  'dark2':                 '#504945',
  'dark2-xterm':           '#4e4e4e',
  'dark3':                 '#665C54',
  'dark3-xterm':           '#626262',
  'dark4':                 '#7C6F64',
  'dark4-xterm':           '#767676',
  'medium':                '#928374',
  'medium-xterm':          '#8a8a8a',
  'light0_hard':           '#FFFFC8',
  'light0_hard-xterm':     '#ffffdf',
  'light0':                '#FDF4C1',
  'light0-xterm':          '#ffffaf',
  'light0_soft':           '#F4E8BA',
  'light0_soft-xterm':     '#ffff87',
  'light1':                '#EBDBB2',
  'light1-xterm':          '#ffdfaf',
  'light2':                '#D5C4A1',
  'light2-xterm':          '#bcbcbc',
  'light3':                '#BDAE93',
  'light3-xterm':          '#a8a8a8',
  'light4':                '#A89984',
  'light4-xterm':          '#949494',
  'bright_red':            '#FB4933',
  'bright_red-xterm':      '#d75f5f',
  'bright_green':          '#B8BB26',
  'bright_green-xterm':    '#afaf00',
  'bright_yellow':         '#FABD2F',
  'bright_yellow-xterm':   '#ffaf00',
  'bright_blue':           '#83A598',
  'bright_blue-xterm':     '#87afaf',
  'bright_purple':         '#D3869B',
  'bright_purple-xterm':   '#d787af',
  'bright_aqua':           '#8EC07C',
  'bright_aqua-xterm':     '#87af87',
  'bright_orange':         '#FE8019',
  'bright_orange-xterm':   '#ff8700',
  'bright_cyan':           '#3FD7E5',
  'bright_cyan-xterm':     '#00d7ff',
  'neutral_red':           '#FB4934',
  'neutral_red-xterm':     '#D75F5F',
  'neutral_green':         '#B8BB26',
  'neutral_green-xterm':   '#73AF00',
  'neutral_yellow':        '#FABD2F',
  'neutral_yellow-xterm':  '#FFAF00',
  'neutral_blue':          '#83A598',
  'neutral_blue-xterm':    '#87AFAF',
  'neutral_purple':        '#D3869B',
  'neutral_purple-xterm':  '#D787AF',
  'neutral_aqua':          '#8EC07C',
  'neutral_aqua-xterm':    '#87AF87',
  'neutral_orange':        '#FE8019',
  'neutral_orange-xterm':  '#FF8700',
  'neutral_cyan':          '#17CCD5',
  'neutral_cyan-xterm':    '#17CCD5',
  'faded_red':             '#9D0006',
  'faded_red-xterm':       '#870000',
  'faded_green':           '#79740E',
  'faded_green-xterm':     '#878700',
  'faded_yellow':          '#B57614',
  'faded_yellow-xterm':    '#af8700',
  'faded_blue':            '#076678',
  'faded_blue-xterm':      '#005f87',
  'faded_purple':          '#8F3F71',
  'faded_purple-xterm':    '#875f87',
  'faded_aqua':            '#427B58',
  'faded_aqua-xterm':      '#5f8787',
  'faded_orange':          '#AF3A03',
  'faded_orange-xterm':    '#af5f00',
  'faded_cyan':            '#00A7AF',
  'faded_cyan-xterm':      '#00afaf',
  'muted_red':             '#901A1E',
  'muted_red-xterm':       '#870000',
  'muted_green':           '#556C21',
  'muted_green-xterm':     '#878700',
  'muted_yellow':          '#A87933',
  'muted_yellow-xterm':    '#af8700',
  'muted_blue':            '#1B5C6B',
  'muted_blue-xterm':      '#005f87',
  'muted_purple':          '#82526E',
  'muted_purple-xterm':    '#875f87',
  'muted_aqua':            '#506E59',
  'muted_aqua-xterm':      '#5f8787',
  'muted_orange':          '#A24921',
  'muted_orange-xterm':    '#af5f00',
  'muted_cyan':            '#18A7AF',
  'muted_cyan-xterm':      '#00afaf',
  'dark_red':              '#421E1E',
  'dark_red-xterm':        '#5f0000',
  'dark_green':            '#232B0F',
  'dark_green-xterm':      '#005f00',
  'dark_yellow':           '#4D3B27',
  'dark_yellow-xterm':     '#5f5f00',
  'dark_blue':             '#2B3C44',
  'dark_blue-xterm':       '#00005f',
  'dark_purple':           '#4E3D45',
  'dark_purple-xterm':     '#5f00af',
  'dark_aqua':             '#36473A',
  'dark_aqua-xterm':       '#005f5f',
  'dark_orange':           '#613620',
  'dark_orange-xterm':     '#af5f00',
  'dark_cyan':             '#205161',
  'dark_cyan-xterm':       '#005f87',
  'mid_red':               '#3F1B1B',
  'mid_red-xterm':         '#5f0000',
  'mid_green':             '#1F321C',
  'mid_green-xterm':       '#005f00',
  'mid_yellow':            '#4C3A25',
  'mid_yellow-xterm':      '#5f5f00',
  'mid_blue':              '#30434C',
  'mid_blue-xterm':        '#00005f',
  'mid_purple':            '#4C3B43',
  'mid_purple-xterm':      '#5f00af',
  'mid_aqua':              '#394C3D',
  'mid_aqua-xterm':        '#005f5f',
  'mid_orange':            '#603000',
  'mid_orange-xterm':      '#af5f00',
  'mid_cyan':              '#005560',
  'mid_cyan-xterm':        '#005f87',
  'delimiter-one':         '#5C7E81',
  'delimiter-one-xterm':   '#5f8787',
  'delimiter-two':         '#837486',
  'delimiter-two-xterm':   '#875f5f',
  'delimiter-three':       '#9C6F68',
  'delimiter-three-xterm': '#af5f5f',
  'delimiter-four':        '#7B665C',
  'delimiter-four-xterm':  '#5f5f5f',
  'identifiers-1':         '#E5D5C5',
  'identifiers-1-xterm':   '#ffdfaf',
  'identifiers-2':         '#DFE5C5',
  'identifiers-2-xterm':   '#dfdfaf',
  'identifiers-3':         '#D5E5C5',
  'identifiers-3-xterm':   '#dfe5c5',
  'identifiers-4':         '#CAE5C5',
  'identifiers-4-xterm':   '#ffd7af',
  'identifiers-5':         '#C5E5CA',
  'identifiers-5-xterm':   '#dfdf87',
  'identifiers-6':         '#C5E5D5',
  'identifiers-6-xterm':   '#dfdfdf',
  'identifiers-7':         '#C5E5DF',
  'identifiers-7-xterm':   '#afdfdf',
  'identifiers-8':         '#C5DFE5',
  'identifiers-8-xterm':   '#dfdfff',
  'identifiers-9':         '#C5D5E5',
  'identifiers-9-xterm':   '#afdfff',
  'identifiers-10':        '#C5CAE5',
  'identifiers-10-xterm':  '#dfafff',
  'identifiers-11':        '#CAC5E5',
  'identifiers-11-xterm':  '#afafff',
  'identifiers-12':        '#D5C5E5',
  'identifiers-12-xterm':  '#dfafaf',
  'identifiers-13':        '#DFC5E5',
  'identifiers-13-xterm':  '#dfc5e5',
  'identifiers-14':        '#E5C5DF',
  'identifiers-14-xterm':  '#ffafaf',
  'identifiers-15':        '#E5C5D5',
  'identifiers-15-xterm':  '#dfdfff',
  'white':                 '#FFFFFF',
  'white-xterm':           '#FFFFFF',
  'black':                 '#000000',
  'black-xterm':           '#000000',
  'sienna':                '#DD6F48',
  'sienna-xterm':          '#d7875f',
  'darkslategray4':        '#528B8B',
  'darkslategray4-xterm':  '#5f8787',
  'lightblue4':            '#66999D',
  'lightblue4-xterm':      '#5fafaf',
  'burlywood4':            '#BBAA97',
  'burlywood4-xterm':      '#afaf87',
  'aquamarine4':           '#83A598',
  'aquamarine4-xterm':     '#87af87',
  'turquoise4':            '#61ACBB',
  'turquoise4-xterm':      '#5fafaf'
};

window.onload=function(){
  var app = new Vue({
    el: '#app',
    data: {
      paletteGroups: [
        {
          title: "DARKNESS",
          prefix: "",
          colors: [
            "dark0_hard",
            "dark0",
            "dark0_soft",
            "dark1",
            "dark2",
            "dark3",
            "dark4"
          ]
        },
        {
          title: "MEDIUM",
          prefix: "",
          colors: [
            "medium"
          ]
        },
        {
          title: "LIGHTNESS",
          prefix: "",
          colors: [
            "light0_hard",
            "light0",
            "light0_soft",
            "light1",
            "light2",
            "light3",
            "light4",
          ]
        },
        {
          title: "BRIGHT COLORS",
          prefix: "bright_",
          colors: [
            "bright_red",
            "bright_green",
            "bright_yellow",
            "bright_blue",
            "bright_purple",
            "bright_aqua",
            "bright_orange",
            "bright_cyan"
          ]
        },
        {
          title: "NEUTRAL COLORS",
          prefix: "neutral_",
          colors: [
            "neutral_red",
            "neutral_green",
            "neutral_yellow",
            "neutral_blue",
            "neutral_purple",
            "neutral_aqua",
            "neutral_orange",
            "neutral_cyan"
          ]
        },
        {
          title: "FADED COLORS",
          prefix: "faded_",
          colors: [
            "faded_red",
            "faded_green",
            "faded_yellow",
            "faded_blue",
            "faded_purple",
            "faded_aqua",
            "faded_orange",
            "faded_cyan"
          ]
        },
        {
          title: "MUTED COLORS",
          prefix: "muted_",
          colors: [
            "muted_red",
            "muted_green",
            "muted_yellow",
            "muted_blue",
            "muted_purple",
            "muted_aqua",
            "muted_orange",
            "muted_cyan"
          ]
        },
        {
          title: "DARK COLORS",
          prefix: "dark_",
          colors: [
            "dark_red",
            "dark_green",
            "dark_yellow",
            "dark_blue",
            "dark_purple",
            "dark_aqua",
            "dark_orange",
            "dark_cyan",
          ]
        },
        {
          title: "MID COLORS",
          prefix: "mid_",
          colors: [
            "mid_red",
            "mid_green",
            "mid_yellow",
            "mid_blue",
            "mid_purple",
            "mid_aqua",
            "mid_orange",
            "mid_cyan"
          ]
        },
        {
          title:"ACCENTS",
          prefix: "",
          colors:[
            "sienna",
            "darkslategray4",
            "lightblue4",
            "burlywood4",
            "aquamarine4",
            "turquoise4"
          ]
        },
        {
          title: "RAINBOW DELIMITERS",
          prefix: "delimiter-",
          colors: [
            "delimiter-one",
            "delimiter-two",
            "delimiter-three",
            "delimiter-four"
          ]
        },
        {
          title: "RAINBOW IDENTIFIERS",
          prefix: "identifiers-",
          colors: [
            "identifiers-1",
            "identifiers-2",
            "identifiers-3",
            "identifiers-4",
            "identifiers-5",
          ]
        },
        {
          title: "",
          prefix: "identifiers-",
          colors: [
            "identifiers-6",
            "identifiers-7",
            "identifiers-8",
            "identifiers-9",
            "identifiers-10"
          ]
        },
        {
          title: "",
          prefix: "identifiers-",
          colors: [
            "identifiers-11",
            "identifiers-12",
            "identifiers-13",
            "identifiers-14",
            "identifiers-15"
          ]
        }
      ]
    }
  });
};

Vue.component('palette-group', {
  props: ['title', 'colors', 'prefix'],
  template: `<div class="palette-group" v-on:click="makeImg">
               <h3>{{title}}</h3>
               <swatch v-for="swatch in colors"
                       v-bind:prefix="prefix"
                       v-bind:content="swatch">
               </swatch>
               <div class="separator"></div>
               <swatch v-for="swatch in colors"
                       is-xterm="true"
                       v-bind:prefix="prefix"
                       v-bind:content="swatch">
               </swatch>
               <div class="group-separator"></div>
             </div>
`,
  methods:{
    makeImg: (e) => window.makeImage(e.target)
  }
});

Vue.component('swatch', {
  props: ['content', 'isXterm', 'prefix'],
  template: `<div class="darktooth-swatch">
               <div v-bind:class="cssClass">
                 <div class="content">{{unprefixed}}</div>
                 <div class="color-label">{{color}}</div>
                 <div class="xterm" v-if="isXterm">Xterm 256</div>
               </div>
               <div v-bind:class="cssClassAfter"></div>
             </div>
`,
  computed: {
    cssClass: function(){
      return `darktooth-${this.content}${this.isXterm == "true" ? "-xterm" : ""}`;
    },
    cssClassAfter: function(){
      return `${this.cssClass}-after`;
    },
    color: function(){
      return palette[`${this.content}${this.isXterm == "true" ? "-xterm" : ""}`];
    },
    unprefixed: function(){
      return this.content.replace(this.prefix, "");
    }
  }
});
