.class final Lcom/squareup/tmes/TagMap$Sparse;
.super Lcom/squareup/tmes/TagMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/TagMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sparse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/tmes/TagMap<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/squareup/tmes/TagMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/squareup/tmes/TagMap$Sparse;->map:Ljava/util/Map;

    return-void
.end method

.method public static sparseTagMapOf(Ljava/util/Map;)Lcom/squareup/tmes/TagMap$Sparse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;)",
            "Lcom/squareup/tmes/TagMap$Sparse<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/TagMap$Sparse;

    invoke-direct {v0, p0}, Lcom/squareup/tmes/TagMap$Sparse;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/TagMap$Sparse;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/TagMap$Sparse;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
