package hkmu.comps380f.dao;

import hkmu.comps380f.model.Comment;
import hkmu.comps380f.model.TicketUser;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface CommentRepository extends JpaRepository<Comment, UUID> {
    List<Comment> findByUser(TicketUser user);

}
