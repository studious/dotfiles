upload_app() {
    rsync -r -e "ssh" --delete --partial --progress \
        --exclude '.git/' \
        --exclude 'public_shared/' \
        --exclude 'public/' \
        --exclude 'public_sg/' \
        --exclude 'public_uk/' \
        --exclude 'public_demo/' \
        --exclude 'public_nz/' \
        --exclude 'public_ph/' \
        --exclude 'public_my/' \
        --exclude 'coverage/' \
        --exclude 'coverage.data' \
        --exclude 'webrat.log' \
        --exclude 'tmp/' \
        --exclude '.git*' \
        --exclude '.DS_Store' \
        --exclude '*.fla' \
        --exclude '*.mov' \
        --exclude '*.rdb' \
        --exclude 'log/' \
        --exclude 'db/*.sqlite3' \
        --exclude 'config/database.yml' \
        --exclude 'config/initializers/country_code.rb' \
        --exclude 'config/initializers/demo_mode.rb' \
        ~/Development/LiteracyPlanetWork/LiteracyPlanet/ $1:/home/ubuntu/public_html/literacyplanet
}

upload_html() {
    rsync -z -r -e "ssh" --partial --progress --copy-links \
        --exclude '.DS_Store' \
        --exclude 'intrepica.html' \
        --exclude 'comprehension_stories/' \
        --exclude 'comprehension_menu.html' \
        --exclude 'phonics_exercises/*' \
        --exclude 'awards/*' \
        --exclude 'arcade_menu.html' \
        --exclude 'phonics_menu.html' \
        --exclude 'pre_reading_menu.html' \
        --exclude 'reading_menu.html' \
        --exclude 'reading_stories/*' \
        --exclude 'spelling_lists/*' \
        --exclude 'spelling_menu.html' \
        --exclude 'user_data_store/*' \
        --exclude 'vocab_lists/*' \
        --exclude 'wardrobe/*' \
        --exclude 'merchandise/*' \
        --exclude 'vocab_menu.html' \
        --exclude 'grammar_menu.html' \
        --exclude 'diag_menu.html' \
        --exclude 'arena_levels/*' \
        --exclude 'mailbox/*' \
        --exclude 'pre_reading_exercises/*' \
        --exclude 'csv_uploads/*' \
        --exclude 'leaderboard.html' \
        --exclude 'school_leaderboard.html' \
        --exclude 'home_competition_leaderboard.html' \
        --exclude 'school_competition_leaderboard.html' \
        --exclude 'flash_countries.html' \
        --exclude 'grammar_exercises/*' \
        --exclude 'avatars/*' \
        --exclude 'api/exercises/*' \
        --exclude 'api/subjects/*' \
        --exclude '1.5/lp/.sass-cache/*' \
        --exclude '1.5/lp/dump.rdb' \
        --exclude 'api/words.json' \
        ~/Development/LiteracyPlanetWork/LiteracyPlanet/public/* $1:/home/ubuntu/public_html/literacyplanet/public/ 
}
