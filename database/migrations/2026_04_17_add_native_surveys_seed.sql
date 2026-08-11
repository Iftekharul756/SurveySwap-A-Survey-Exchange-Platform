-- Add 10 native surveys to the database
-- Date: 2026-04-17

USE surveyswap;

-- Insert 10 native surveys created by existing users
INSERT INTO surveys (
  user_id, source_type, title, description, form_url, survey_schema_json, category, target_audience,
  estimated_minutes, reward_points, listing_fee, total_budget, remaining_budget, status, created_at
) VALUES
  (2, 'native', 'Programming Language Preferences Survey',
   'Help us understand which programming languages developers prefer and why.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'What is your primary programming language?', 'required', true, 
                  'options', JSON_ARRAY('Python', 'JavaScript', 'Java', 'C++', 'Go', 'Rust')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How many years of coding experience do you have?', 'required', true,
                  'options', JSON_ARRAY('Less than 1 year', '1-3 years', '3-5 years', '5-10 years', '10+ years')),
     JSON_OBJECT('type', 'short_text', 'title', 'What feature would you like to see in your favorite language?', 'required', true)
   )),
   'Technology', 'Developers', 5, 2, 0, 10, 10, 'active', NOW() - INTERVAL 3 DAY),

  (3, 'native', 'Remote Work Productivity Study',
   'Share your experiences and tips for maintaining productivity while working remotely.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How long have you been working remotely?', 'required', true,
                  'options', JSON_ARRAY('Less than 6 months', '6-12 months', '1-2 years', '2-5 years', 'More than 5 years')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'What is your biggest remote work challenge?', 'required', true,
                  'options', JSON_ARRAY('Work-life balance', 'Communication', 'Distractions', 'Isolation', 'Tech issues')),
     JSON_OBJECT('type', 'short_text', 'title', 'What productivity tool cannot you live without?', 'required', true)
   )),
   'Work', 'Remote Workers', 4, 1, 0, 5, 5, 'active', NOW() - INTERVAL 2 DAY),

  (4, 'native', 'Fitness and Health Goals',
   'We are researching fitness habits and wellness goals among young professionals.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How often do you exercise per week?', 'required', true,
                  'options', JSON_ARRAY('Not at all', '1-2 times', '3-4 times', '5-6 times', 'Daily')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'What is your primary fitness goal?', 'required', true,
                  'options', JSON_ARRAY('Weight loss', 'Muscle gain', 'Overall health', 'Endurance', 'Flexibility')),
     JSON_OBJECT('type', 'short_text', 'title', 'What motivates you to stay active?', 'required', true)
   )),
   'Health', 'Young Professionals', 3, 1, 0, 5, 5, 'active', NOW() - INTERVAL 1 DAY),

  (5, 'native', 'Online Learning Preferences',
   'Understand how learners prefer to consume educational content online.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'Which online learning platform have you used most?', 'required', true,
                  'options', JSON_ARRAY('Coursera', 'Udemy', 'LinkedIn Learning', 'edX', 'Other')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'What is your preferred video length for learning?', 'required', true,
                  'options', JSON_ARRAY('Under 5 minutes', '5-15 minutes', '15-30 minutes', '30-60 minutes', '1+ hours')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How often do you take online courses?', 'required', true,
                  'options', JSON_ARRAY('Monthly', 'Few times a year', 'Once a year', 'Rarely')),
     JSON_OBJECT('type', 'short_text', 'title', 'What subject would you like to learn about?', 'required', true)
   )),
   'Education', 'Students & Professionals', 6, 2, 0, 10, 10, 'active', NOW() - INTERVAL 5 DAY),

  (2, 'native', 'Consumer Tech Product Satisfaction',
   'Help us improve our product by sharing your experience and suggestions.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How satisfied are you with your smartphone?', 'required', true,
                  'options', JSON_ARRAY('Very unsatisfied', 'Unsatisfied', 'Neutral', 'Satisfied', 'Very satisfied')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How long have you owned your current device?', 'required', true,
                  'options', JSON_ARRAY('Less than 6 months', '6-12 months', '1-2 years', '2-3 years', '3+ years')),
     JSON_OBJECT('type', 'short_text', 'title', 'What feature would improve your device?', 'required', true)
   )),
   'Technology', 'Tech Enthusiasts', 4, 1, 0, 5, 5, 'pending', NOW() - INTERVAL 7 DAY),

  (3, 'native', 'Sustainable Living Habits',
   'Exploring the adoption of sustainable practices in daily life.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'Which sustainability action do you practice most?', 'required', true,
                  'options', JSON_ARRAY('Recycling', 'Reducing plastic use', 'Buying local', 'Using renewable energy', 'None')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'What prevents you from being more sustainable?', 'required', true,
                  'options', JSON_ARRAY('Cost', 'Inconvenience', 'Lack of options', 'Lack of knowledge', 'Other')),
     JSON_OBJECT('type', 'short_text', 'title', 'What sustainability tip would you recommend?', 'required', true)
   )),
   'Environment', 'Eco-conscious Consumers', 5, 2, 0, 10, 10, 'active', NOW() - INTERVAL 4 DAY),

  (4, 'native', 'Streaming Service Usage Analysis',
   'Research on how people use and choose streaming entertainment services.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How many streaming services do you subscribe to?', 'required', true,
                  'options', JSON_ARRAY('1-2', '3-4', '5-6', '7+', 'None')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'What type of content do you watch most?', 'required', true,
                  'options', JSON_ARRAY('Movies', 'TV Shows', 'Documentaries', 'Reality TV', 'Sports')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How often do you watch streaming content?', 'required', true,
                  'options', JSON_ARRAY('Daily', '3-5 times weekly', '1-2 times weekly', 'Few times monthly', 'Rarely')),
     JSON_OBJECT('type', 'short_text', 'title', 'What would make you subscribe to another service?', 'required', true)
   )),
   'Entertainment', 'Streaming Users', 5, 2, 0, 10, 10, 'active', NOW() - INTERVAL 6 DAY),

  (5, 'native', 'Travel and Adventure Preferences',
   'Understanding travel styles and destination preferences across different demographics.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How often do you travel for leisure?', 'required', true,
                  'options', JSON_ARRAY('Multiple times a year', '1-2 times annually', 'Once per year', 'Every few years', 'Rarely')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'What is your ideal vacation duration?', 'required', true,
                  'options', JSON_ARRAY('Weekend getaway', '1 week', '2 weeks', '3+ weeks')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'What matters most in choosing a destination?', 'required', true,
                  'options', JSON_ARRAY('Cost', 'Climate', 'Culture', 'Adventure activities', 'Safety')),
     JSON_OBJECT('type', 'short_text', 'title', 'What is your dream travel destination?', 'required', true)
   )),
   'Travel', 'Adventure Seekers', 6, 3, 0, 15, 15, 'active', NOW()),

  (2, 'native', 'Food and Dietary Preferences',
   'Research on eating habits, dietary preferences, and food choices.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'Which diet best describes your eating habits?', 'required', true,
                  'options', JSON_ARRAY('Omnivore', 'Vegetarian', 'Vegan', 'Pescatarian', 'Paleo')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How important is organic food to you?', 'required', true,
                  'options', JSON_ARRAY('Very important', 'Somewhat important', 'Not important', 'No preference')),
     JSON_OBJECT('type', 'short_text', 'title', 'What is your favorite healthy meal?', 'required', true)
   )),
   'Health', 'Food & Nutrition Enthusiasts', 4, 1, 0, 5, 5, 'pending', NOW() - INTERVAL 8 DAY),

  (3, 'native', 'Social Media Impact and Usage',
   'Study on social media habits, mental health impacts, and daily usage patterns.',
   NULL,
   JSON_OBJECT('questions', JSON_ARRAY(
     JSON_OBJECT('type', 'multiple_choice', 'title', 'Which social media platform do you use most?', 'required', true,
                  'options', JSON_ARRAY('Facebook', 'Instagram', 'TikTok', 'Twitter/X', 'LinkedIn', 'Other')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'How many hours per day do you spend on social media?', 'required', true,
                  'options', JSON_ARRAY('Less than 1 hour', '1-2 hours', '2-3 hours', '3-4 hours', '4+ hours')),
     JSON_OBJECT('type', 'multiple_choice', 'title', 'Has social media affected your mental health?', 'required', true,
                  'options', JSON_ARRAY('Positively', 'Negatively', 'Both equally', 'Not affected')),
     JSON_OBJECT('type', 'short_text', 'title', 'What feature would improve social media for you?', 'required', true)
   )),
   'Psychology', 'Social Media Users', 7, 3, 0, 15, 15, 'active', NOW() - INTERVAL 1 DAY);
