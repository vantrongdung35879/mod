.class public Lbq/category_log;
.super Lbq/log;
.source "category_log.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbq/log;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lbq/log;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lbq/log;-><init>(Lbq/log;)V

    return-void
.end method


# virtual methods
.method public get_categories_count()J
    .locals 2

    .line 41
    iget-object v0, p0, Lbq/category_log;->categories_name_array_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public get_categories_name_array()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lbq/category_log;->categories_name_array_:Ljava/util/List;

    return-object v0
.end method
