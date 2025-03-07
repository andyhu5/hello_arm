cargo build --target aarch64-unknown-linux-musl --release && echo -n build done.

scp /home/ubuntu/rust/arm/hello_arm/target/aarch64-unknown-linux-musl/release/hello_arm openailab@192.168.3.173:~/test/hello_arm && echo -n copy done.
echo 'begin to execute.'
ssh openailab@192.168.3.173 './test/hello_arm'