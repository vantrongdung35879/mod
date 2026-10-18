.class final Lcom/squareup/tmes/EnumAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/EnumAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/squareup/tmes/ProtoEnum;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/squareup/tmes/ProtoEnum;Lcom/squareup/tmes/ProtoEnum;)I
    .locals 0

    invoke-interface {p1}, Lcom/squareup/tmes/ProtoEnum;->getValue()I

    move-result p1

    invoke-interface {p2}, Lcom/squareup/tmes/ProtoEnum;->getValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/squareup/tmes/ProtoEnum;

    check-cast p2, Lcom/squareup/tmes/ProtoEnum;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/tmes/EnumAdapter$1;->compare(Lcom/squareup/tmes/ProtoEnum;Lcom/squareup/tmes/ProtoEnum;)I

    move-result p1

    return p1
.end method
