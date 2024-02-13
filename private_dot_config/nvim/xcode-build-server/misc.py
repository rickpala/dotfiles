import os


def get_mtime(path):
    """return mtime, or 0 when not exists"""
    if os.path.exists(path):
        try:
            return os.stat(path).st_mtime
        except FileNotFoundError:
            pass
    return 0


def force_remove(path):
    try:
        os.remove(path)
    except FileNotFoundError:
        pass
