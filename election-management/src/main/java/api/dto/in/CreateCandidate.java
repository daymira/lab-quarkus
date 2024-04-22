package api.dto.in;

import domain.Candidate;

import java.util.Optional;

public record CreateCandidate(Optional<String> photo,
                              String givenName,
                              String familyName,
                              String email,
                              Optional<String> phone,
                              Optional<String> jobTitle) {

    public Candidate toDomain(){
        return Candidate.create(
                Optional.ofNullable(photo().orElse(null)),
                givenName(),
                familyName(),
                email(),
                Optional.ofNullable(phone().orElse(null)),
                Optional.ofNullable(jobTitle().orElse(null)));
    }
}
