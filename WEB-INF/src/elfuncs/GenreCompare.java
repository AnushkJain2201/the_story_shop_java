package elfuncs;

import java.util.ArrayList;
import java.util.HashSet;

import models.Genre;

public class GenreCompare {
    public static ArrayList<Genre> compareGenre(ArrayList<Genre> genre, ArrayList<Genre> genreF) {

        HashSet<String> set = new HashSet<>();
        ArrayList<Genre> newGenres = new ArrayList<>();

        for(Genre gen1 : genreF) {
            set.add(gen1.getName());
        }

        if (!genreF.isEmpty()) {
            for(Genre gen2: genre) {
                if(!set.contains(gen2.getName())) {
                    newGenres.add(gen2);
                }
            }
            return newGenres;

        } else {
            return genre;
        }

    }
}
