<script>
 import 'milligram';
 export let title = '';
</script>

<svelte:head>
    <title>{title}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans&family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
</svelte:head>

<div>
    <slot></slot>
</div>

<style>
 div > :global(section) {
     display: grid;
     grid-template-columns: 2fr 1fr;
     grid-template-rows: repeat(1fr);
     grid-template-areas:
         "main sidebar"
         "footer footer";
 }
 div :global(blockquote) {
     grid-area: sidebar;
     text-align: right;
     margin: 0;
     border: none;
 }
 div :global(section section) {
     grid-column-start: main;
     grid-column-end: main;
 }
 div :global(section section:nth-child(4)) {
     grid-column-start: sidebar;
     grid-column-end: sidebar;
     text-align: right;
 }
 div :global(section section:nth-child(5)) {
     grid-row-start: 3;
 }
 div :global(section section:nth-child(6)) {
     grid-column-end: footer;
 }
 div :global(:is(p, li)) {
     margin-bottom: .2em;
 }
 div :global(ul) {
     margin-bottom: 1.5rem;
 }
 div {
     width: 8.5in;
     min-height: 11in;
     border: 1px solid transparent;
     padding: 1cm;
 }
 @media screen {
     div {
         margin: 4rem auto;
         border: #ddd solid 2px;
         box-shadow: 0 5px 20px #dddd;
     }
 }
 @page {
     size: 8.5in 11in;
     margin: 0;
 }
 :global(body) {
     margin: 0;
 }
</style>
