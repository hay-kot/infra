
from pathlib import Path

find = ".yml"
replace = ".yaml"

PROJECT_DIR = Path(__file__).parent.parent



from pathlib import Path

CWD = Path(__file__).parent


def main():
    print("Starting yml -> yaml extension converter")
    
    files_converted = 0
    for f in PROJECT_DIR.glob(f"**/*{find}"):
        print(f"{f} -> {f.with_suffix(replace)}")
        f.rename(f.with_suffix(replace))
        files_converted += 1

    print(f"Finished, {files_converted} files were changes")


if __name__ == "__main__":
    main()
