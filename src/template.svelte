<script>
 import 'milligram';
 export let title;
 export let summary;
 export let email;
 export let github;
 export let phone;
 export let location;
</script>

<svelte:head>
    <title>{title}</title>
</svelte:head>

<div class="Page">
    <heading>
        <div>
            <h1>
                {title}
            </h1>
            <p>
                {summary}
            </p>
        </div>
        <ul>
            <li><a href="mailto:{email}">{email}</a></li>
            <li><a href="{github[0]}">{github[1]}</a></li>
            <li>{phone}</li>
            <li>{location}</li>
        </ul>
    </heading>
    <slot></slot>
</div>

<style>
 @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap');
 heading {
     display: flex;
     justify-content: space-between;
 }
 heading ul {
     text-align: right;
 }
 .Page {
    line-height: 1.4;
 }
 .Page > :global(section) {
     display: flex;
     flex-direction: column;
 }
 .Page :global(blockquote) {
     text-align: right;
     margin: 0;
     border: none;
 }
 /* Styling for skills section */
 .Page > :global(section:nth-child(2)) {
     display: grid;
     width: 100%;
     grid-auto-columns: 1fr;
     grid-auto-flow: column;
 }
 .Page > :global(section:nth-child(2) h2) {
     display: none;
 }
 .Page :global(li) {
     /* list-style: none; */
 }
 .Page :global(:is(p, li)) {
     margin-bottom: 0;
 }
 .Page :global(ul) {
     margin-bottom: 1.4rem;
 }
 .Page {
     width: 8.5in;
     min-height: 11in;
     border: 1px solid transparent;
     padding: 1cm;
 }
 @media screen {
     .Page {
         margin: 4rem auto;
         border: #ddd solid 2px;
         box-shadow: 0 5px 20px #dddd;
         padding-bottom: 0; /* Stop generating pg2 */
     }
 }
 @page {
     size: 8.5in 11in;
     margin: 0;
 }
 :global(:root) {
     margin: 0;
     font-size: 7pt;
 }
</style>
