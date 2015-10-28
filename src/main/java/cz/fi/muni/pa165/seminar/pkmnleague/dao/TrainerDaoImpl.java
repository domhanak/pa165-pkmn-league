package cz.fi.muni.pa165.seminar.pkmnleague.dao;


import cz.fi.muni.pa165.seminar.pkmnleague.domain.Trainer;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author Pavel Kouřil
 */
public class TrainerDaoImpl implements TrainerDao {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Trainer findById(int id) {
        return entityManager.find(Trainer.class, id);
    }

    @Override
    public void create(Trainer trainer) {
        entityManager.persist(trainer);
    }

    @Override
    public void delete(Trainer trainer) {
        entityManager.remove(trainer);
    }

    @Override
    public List<Trainer> findAll() {
        return entityManager.createQuery("select t from Trainer t", Trainer.class).getResultList();
    }
}
