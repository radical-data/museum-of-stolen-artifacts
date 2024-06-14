<script>
	import { page } from '$app/stores';

    export let data;
  </script>

  <ul>
    {#each data.more_than_things as more_than_thing}
      <li><a href={`${$page.url.pathname}/${more_than_thing.slug}`}>{more_than_thing.name}</a></li>
    {/each}
  </ul>