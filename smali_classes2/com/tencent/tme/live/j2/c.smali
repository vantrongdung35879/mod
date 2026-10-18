.class public abstract Lcom/tencent/tme/live/j2/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/tencent/tme/live/j2/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/j2/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/j2/b;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/tme/live/j2/c;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/j2/c;->a:Lcom/tencent/tme/live/j2/c;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
