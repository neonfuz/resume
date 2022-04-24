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
 div {
     width: 8.5in;
     height: 11in;
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
