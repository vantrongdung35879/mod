.class public Lcom/itop/gcloud/msdk/popup/utils/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertValueToInt(Ljava/lang/CharSequence;I)I
    .locals 7

    if-nez p0, :cond_0

    return p1

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x2d

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, -0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x30

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    if-ne v4, v5, :cond_5

    sub-int/2addr p1, v3

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, v2, 0x1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x78

    if-eq v3, v1, :cond_4

    const/16 v3, 0x58

    if-ne v3, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    move v2, p1

    const/16 v6, 0x8

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_5
    const/16 p1, 0x23

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/16 v6, 0xa

    .line 46
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    mul-int p0, p0, v0

    return p0
.end method
