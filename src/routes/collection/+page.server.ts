import { supabase } from "$lib/supabaseClient";

export async function load() {
  const { data } = await supabase.from("more_than_things").select();
  return {
    more_than_things: data ?? [],
  };
}