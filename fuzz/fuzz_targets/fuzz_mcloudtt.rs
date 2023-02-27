use honggfuzz::fuzz;
use shunt::tcp_handling::handle_packet;
fn main() {
    loop {
        fuzz!(|data: &[u8]| { handle_packet });
    }
}
