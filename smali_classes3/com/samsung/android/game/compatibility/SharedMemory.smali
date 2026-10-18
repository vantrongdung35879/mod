.class public Lcom/samsung/android/game/compatibility/SharedMemory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/game/compatibility/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SharedMemory"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFile:Landroid/os/MemoryFile;

.field private mSize:I

.field private mWriteable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/game/compatibility/SharedMemory$1;

    invoke-direct {v0}, Lcom/samsung/android/game/compatibility/SharedMemory$1;-><init>()V

    sput-object v0, Lcom/samsung/android/game/compatibility/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mWriteable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mSize:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/game/compatibility/SharedMemory$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/game/compatibility/SharedMemory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/MemoryFile;

    invoke-direct {v0, p1, p2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mFile:Landroid/os/MemoryFile;

    iput p2, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mSize:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mWriteable:Z

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "getFileDescriptor"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    iput-object p1, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mSize:I

    return v0
.end method

.method public readBytes([BIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mWriteable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/MemoryFile;->readBytes([BIII)I

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public writeBytes([BIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mWriteable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    iget p2, p0, Lcom/samsung/android/game/compatibility/SharedMemory;->mSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
