.class public Lcom/tencent/tme/live/f2/f;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/tencent/tme/live/f2/f;

.field public static final c:Lcom/tencent/tme/live/f2/f;

.field public static final d:Lcom/tencent/tme/live/f2/f;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/f2/f;

    const-string v1, "reader idle"

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/f2/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/f2/f;->b:Lcom/tencent/tme/live/f2/f;

    new-instance v0, Lcom/tencent/tme/live/f2/f;

    const-string v1, "writer idle"

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/f2/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/f2/f;->c:Lcom/tencent/tme/live/f2/f;

    new-instance v0, Lcom/tencent/tme/live/f2/f;

    const-string v1, "both idle"

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/f2/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/f2/f;->d:Lcom/tencent/tme/live/f2/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/f2/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/f;->a:Ljava/lang/String;

    return-object v0
.end method
