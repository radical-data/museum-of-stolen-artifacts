import { supabase } from '$lib/supabaseClient';
import { error } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';
import { slugify } from '$lib/utils/createUrl';

export const load: PageServerLoad = async ({ params }) => {
	const { data: artifactData, error: mapError } = await supabase
		.from('more_than_things')
		.select('*')
		.eq('slug', slugify(params.slug))
		.single();

	if (mapError) {
		console.error('Error fetching artifact:', mapError);
		throw error(404, 'Artifact not found');
	}
	const artifact = artifactData;

	return {
		artifact
	};
};
