import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

// Define the projects collection schema
const projects = defineCollection({
  loader: glob({ pattern: '**/*.md', base: './src/content/projects' }),
  schema: z.object({
    title: z.string(),
    description: z.string(),
    tags: z.array(z.string()),
    thumbnail: z.string().optional(),
    date: z.date(),
    featured: z.boolean().default(false),
  }),
});

export const collections = { projects };
