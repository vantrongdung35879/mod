.class public final enum Lcom/tencent/tme/live/j0/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/j0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tme/live/j0/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/tencent/tme/live/j0/b$a;

.field public static final enum d:Lcom/tencent/tme/live/j0/b$a;

.field public static final enum e:Lcom/tencent/tme/live/j0/b$a;

.field public static final enum f:Lcom/tencent/tme/live/j0/b$a;

.field public static final enum g:Lcom/tencent/tme/live/j0/b$a;

.field public static final enum h:Lcom/tencent/tme/live/j0/b$a;

.field public static final enum i:Lcom/tencent/tme/live/j0/b$a;

.field public static final synthetic j:[Lcom/tencent/tme/live/j0/b$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/tme/live/j0/b$a;

    const-string v1, "http"

    const-string v2, "HTTP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/tme/live/j0/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/tme/live/j0/b$a;->c:Lcom/tencent/tme/live/j0/b$a;

    new-instance v1, Lcom/tencent/tme/live/j0/b$a;

    const-string v2, "https"

    const-string v4, "HTTPS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/tencent/tme/live/j0/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/tme/live/j0/b$a;->d:Lcom/tencent/tme/live/j0/b$a;

    new-instance v2, Lcom/tencent/tme/live/j0/b$a;

    const-string v4, "file"

    const-string v6, "FILE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/tencent/tme/live/j0/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/tme/live/j0/b$a;->e:Lcom/tencent/tme/live/j0/b$a;

    new-instance v4, Lcom/tencent/tme/live/j0/b$a;

    const-string v6, "content"

    const-string v8, "CONTENT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/tencent/tme/live/j0/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tencent/tme/live/j0/b$a;->f:Lcom/tencent/tme/live/j0/b$a;

    new-instance v6, Lcom/tencent/tme/live/j0/b$a;

    const-string v8, "assets"

    const-string v10, "ASSETS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/tencent/tme/live/j0/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tencent/tme/live/j0/b$a;->g:Lcom/tencent/tme/live/j0/b$a;

    new-instance v8, Lcom/tencent/tme/live/j0/b$a;

    const-string v10, "drawable"

    const-string v12, "DRAWABLE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/tencent/tme/live/j0/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/tencent/tme/live/j0/b$a;->h:Lcom/tencent/tme/live/j0/b$a;

    new-instance v10, Lcom/tencent/tme/live/j0/b$a;

    const-string v12, ""

    const-string v14, "UNKNOWN"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/tencent/tme/live/j0/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/tencent/tme/live/j0/b$a;->i:Lcom/tencent/tme/live/j0/b$a;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/tencent/tme/live/j0/b$a;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    sput-object v12, Lcom/tencent/tme/live/j0/b$a;->j:[Lcom/tencent/tme/live/j0/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/tme/live/j0/b$a;->a:Ljava/lang/String;

    const-string p1, "://"

    invoke-static {p3, p1}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/j0/b$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tencent/tme/live/j0/b$a;
    .locals 6

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/j0/b$a;->values()[Lcom/tencent/tme/live/j0/b$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/tme/live/j0/b$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lcom/tencent/tme/live/j0/b$a;->i:Lcom/tencent/tme/live/j0/b$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tme/live/j0/b$a;
    .locals 1

    const-class v0, Lcom/tencent/tme/live/j0/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/live/j0/b$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tme/live/j0/b$a;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/j0/b$a;->j:[Lcom/tencent/tme/live/j0/b$a;

    invoke-virtual {v0}, [Lcom/tencent/tme/live/j0/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tme/live/j0/b$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/j0/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/j0/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/tencent/tme/live/j0/b$a;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "URI [%1$s] doesn\'t have expected scheme [%2$s]"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tme/live/j0/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
