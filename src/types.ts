export interface Career {
  period: string;
  dateFrom: string;
  dateTo?: string;
  title: string;
  company: string;
  description: string;
  skills: string[];
  isCurrent: boolean;
}

export interface Project {
  title: string;
  description: string;
  tags: string[];
  thumbnail?: string;
  date: Date;
  featured: boolean;
  slug: string;
}
