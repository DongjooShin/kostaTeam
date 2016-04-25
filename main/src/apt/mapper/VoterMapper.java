package apt.mapper;

import java.util.List;

import apt.classes.Candidate;
import apt.classes.Member;

public interface VoterMapper {
	public Member selectOneMember(String id);
	public Member selectGroupPresi();
	public List<Member> selectBuildingPresi();
	public List<Candidate> selectAllGPreCandi();
	public int levelDownGroupPresi(int cd_candidate);
}
