.class final Lcom/uqm/crashsight/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/UnsafeUtil$Android32MemoryAccessor;,
        Lcom/uqm/crashsight/protobuf/UnsafeUtil$Android64MemoryAccessor;,
        Lcom/uqm/crashsight/protobuf/UnsafeUtil$JvmMemoryAccessor;,
        Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;
    }
.end annotation


# static fields
.field static final a:J

.field static final b:Z

.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Lsun/misc/Unsafe;

.field private static final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final f:Z

.field private static final g:Z

.field private static final h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

.field private static final i:Z

.field private static final j:Z

.field private static final k:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    const-class v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c:Ljava/util/logging/Logger;

    .line 45
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d:Lsun/misc/Unsafe;

    .line 46
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->b()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e:Ljava/lang/Class;

    .line 47
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Class;)Z

    move-result v1

    sput-boolean v1, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f:Z

    .line 48
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->g:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3323
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    .line 3325
    new-instance v3, Lcom/uqm/crashsight/protobuf/UnsafeUtil$Android64MemoryAccessor;

    invoke-direct {v3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$Android64MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    .line 3327
    new-instance v3, Lcom/uqm/crashsight/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-direct {v3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$Android32MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 3333
    :cond_2
    new-instance v3, Lcom/uqm/crashsight/protobuf/UnsafeUtil$JvmMemoryAccessor;

    invoke-direct {v3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 49
    :cond_3
    :goto_0
    sput-object v3, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    .line 51
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e()Z

    move-result v0

    sput-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->i:Z

    .line 52
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d()Z

    move-result v0

    sput-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->j:Z

    .line 54
    const-class v0, [B

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a:J

    .line 58
    const-class v0, [Z

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Class;)I

    .line 59
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Class;)I

    .line 61
    const-class v0, [I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Class;)I

    .line 62
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Class;)I

    .line 64
    const-class v0, [J

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Class;)I

    .line 65
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Class;)I

    .line 67
    const-class v0, [F

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Class;)I

    .line 68
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Class;)I

    .line 70
    const-class v0, [D

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Class;)I

    .line 71
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Class;)I

    .line 73
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Class;)I

    .line 74
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Class;)I

    .line 76
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v3, :cond_4

    goto :goto_1

    .line 3520
    :cond_4
    invoke-virtual {v3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->b(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/16 v0, -0x1

    .line 76
    :goto_2
    sput-wide v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->k:J

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(J)B
    .locals 1

    .line 255
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(J)B

    move-result p0

    return p0
.end method

.method static a([BJ)B
    .locals 3

    .line 177
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Object;J)I
    .locals 1

    .line 129
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->e(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/reflect/Field;)J
    .locals 2

    .line 109
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->b(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 280
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->k:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->f(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 102
    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 529
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static a(JB)V
    .locals 1

    .line 259
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(JB)V

    return-void
.end method

.method static a(J[BJJ)V
    .locals 8

    .line 247
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(J[BJJ)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;JB)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;JB)V

    return-void
.end method

.method static a(Ljava/lang/Object;JD)V
    .locals 6

    .line 165
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method static a(Ljava/lang/Object;JF)V
    .locals 1

    .line 157
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method static a(Ljava/lang/Object;JI)V
    .locals 1

    .line 133
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JJ)V
    .locals 6

    .line 141
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 173
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2586
    iget-object v0, v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;JZ)V
    .locals 1

    .line 149
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static a([BJB)V
    .locals 3

    .line 181
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method static a([BJJJ)V
    .locals 8

    .line 243
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a([BJJJ)V

    return-void
.end method

.method static a()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->j:Z

    return v0
.end method

.method private static b(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 113
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1590
    iget-object v0, v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static b(J)J
    .locals 1

    .line 271
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static b(Ljava/lang/Object;J)J
    .locals 1

    .line 137
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static b(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    .line 284
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Object;JB)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 2971
    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;JB)V

    return-void
.end method

.method static b()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->i:Z

    return v0
.end method

.method private static c(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 117
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1594
    iget-object v0, v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static c()Lsun/misc/Unsafe;
    .locals 1

    .line 293
    :try_start_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$1;-><init>()V

    .line 294
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static c(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 949
    invoke-static {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 952
    invoke-static {p0, v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static synthetic c(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    .line 2975
    invoke-static {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;JB)V

    return-void
.end method

.method static c(Ljava/lang/Object;J)Z
    .locals 1

    .line 145
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;J)F
    .locals 1

    .line 153
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 956
    invoke-static {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 959
    invoke-static {p0, v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static d()Z
    .locals 9

    .line 338
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 342
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 343
    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 344
    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 345
    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 346
    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 347
    const-string v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 348
    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 349
    const-string v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 350
    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 351
    const-string v2, "putObject"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v3

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 352
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 355
    :cond_1
    const-string v2, "getByte"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 356
    const-string v2, "putByte"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 357
    const-string v2, "getBoolean"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 358
    const-string v2, "putBoolean"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 359
    const-string v2, "getFloat"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 360
    const-string v2, "putFloat"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 361
    const-string v2, "getDouble"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 362
    const-string v2, "putDouble"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    .line 366
    sget-object v2, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v1
.end method

.method private static d(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 408
    const-class v0, [B

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 412
    :cond_0
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e:Ljava/lang/Class;

    .line 413
    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 414
    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 415
    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 416
    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 417
    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 418
    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 419
    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 420
    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    aput-object p0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method static e(Ljava/lang/Object;J)D
    .locals 1

    .line 161
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->d(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static e()Z
    .locals 9

    .line 374
    const-string v0, "copyMemory"

    const-string v1, "getLong"

    sget-object v2, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 378
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 380
    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    .line 381
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 383
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f()Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_1

    return v3

    .line 387
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    return v5

    .line 390
    :cond_2
    const-string v6, "getByte"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 391
    const-string v6, "putByte"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 392
    const-string v6, "getInt"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 393
    const-string v6, "putInt"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 394
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 395
    const-string v1, "putLong"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    .line 396
    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    aput-object v7, v6, v5

    aput-object v7, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x5

    .line 397
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v5

    aput-object v7, v6, v4

    aput-object v8, v6, v1

    const/4 v1, 0x4

    aput-object v8, v6, v1

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    .line 400
    sget-object v1, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v3
.end method

.method static f(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 169
    sget-object v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h:Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static f()Ljava/lang/reflect/Field;
    .locals 3

    .line 429
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 437
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic g(Ljava/lang/Object;J)B
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->k(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic h(Ljava/lang/Object;J)B
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->l(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic i(Ljava/lang/Object;J)Z
    .locals 0

    .line 2963
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->k(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic j(Ljava/lang/Object;J)Z
    .locals 0

    .line 2967
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->l(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static k(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 941
    invoke-static {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static l(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 945
    invoke-static {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method
