package elfuncs;

import models.Wishlist;

public class IsLiked {
    public static boolean isTheBookLiked(int bookId, int userId) {
        // Database query to check if the user has already liked the book
        return Wishlist.isLikedByUser(bookId, userId);
    }
}
